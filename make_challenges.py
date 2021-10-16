#!/usr/bin/env python3
# challenge: aido-LFP-sim-validation
#
# title: "LFP 🚗 - Lane following with Duckies  (simulation 👾, validation 🏋)"
# tags: [visible, ml-validation, aido, aido-embodied, LF, v4, simulation]
# description: |
#   Lane following challenge.
#
# protocol: aido2_db18_agent-z2
#
#
# date-open: 2021-01-31T00:00Z
# date-close: 2020-12-05T00:00Z
#
# scoring: !include scoring.yaml
#
# steps:
#   LFP-sim:
#     title: Simulation step
#     description: ""
#     features_required:
#       compute_sims: 1 # computation machine
#
#     timeout: 10000 # 1 hour
#     evaluation_parameters:
#       services:
#         evaluator: !include comp_evaluator.yaml
#         simulator: !include comp_simulator.yaml
#         solution: !include comp_solution.yaml
#
#         scenario_maker:
#           environment:
#             AIDONODE_DATA_IN: /fifos/scenario_maker-in
#             AIDONODE_DATA_OUT: fifo:/fifos/scenario_maker-out
#             AIDONODE_CONFIG: |
#               maps:
#               - ETHZ_autolab_technical_track
#               scenarios_per_map: 1
#               robots_npcs: []
#               robots_pcs: [ego0]
#               nduckies: 8
#           image: ${REGISTRY}/duckietown/challenge-aido_lf-scenario_maker:daffy-amd64
#
from datetime import timedelta
from typing import cast, Dict

from graphtage import yaml
from zuper_commons.fs import read_ustring_from_utf8_file, write_ustring_to_utf8_file
from zuper_commons.timing import now_utc
from zuper_ipce import IESO, ipce_from_object, object_from_ipce

from duckietown_challenges import (
    ChallengeDescription,
    ChallengeName,
    ChallengeStep,
    ChallengeTransitions,
    EvaluationParameters,
    Scoring,
    ServiceDefinition,
    STATE_ERROR,
    STATE_FAILED,
    STATE_START,
    StepName,
    Transition,
)


def main():
    challenge_name = cast(ChallengeName, "aido5-LFP-sim-validation")
    tags = ["visible", "ml-validation", "aido5", "aido5-embodied", "LF", "v4", "simulation"]

    protocol = "aido2_db18_agent-z2"

    scoring = read_from_file("scoring.yaml", Scoring)

    nsteps = 4
    steps = {}

    # transitions:
    # # We start with the state START triggering step1
    # - [START, success, step1]
    # # If step1 succeeds then we go on to step2
    # - [step1, success, step2]
    # # # If step1 fails, then we finish
    # - [step1, failed, FAILED]
    # - [step1, error, ERROR]
    # # if Step2 finishes, all good
    # - [step2, success, SUCCESS]
    # # Otherwise error
    # - [step2, failed, FAILED]
    # - [step2, error, ERROR]

    for i in range(nsteps):
        stepname = cast(StepName, f"LFP-{i:02d}")
        services: Dict[str, ServiceDefinition] = {}
        services["evaluator"] = read_from_file("comp_evaluator.yaml", ServiceDefinition)

        services["simulator"] = read_from_file("comp_simulator.yaml", ServiceDefinition)

        services["solution"] = read_from_file("comp_solution.yaml", ServiceDefinition)

        evaluation_parameters = EvaluationParameters(version="3", services=services)
        step = ChallengeStep(
            name=stepname,
            title="step",
            description="step desc",
            evaluation_parameters=evaluation_parameters,
            timeout=3600,
            features_required={"compute_sims": 1},
        )

        steps[stepname] = step

    transitions = []
    for stepname in steps:
        transitions.append([STATE_START, "success", stepname])
        transitions.append([stepname, "failed", STATE_FAILED])
        transitions.append([stepname, "error", STATE_ERROR])
    transitions2 = []
    for t in transitions:
        transitions2.append(Transition(first=t[0], condition=t[1], second=t[2]))

    ct = ChallengeTransitions(steps=list(steps), transitions=transitions2)
    cd = ChallengeDescription(
        name=challenge_name,
        title="The title",
        description="The description",
        ct=ct,
        dependencies={},
        date_open=now_utc(),
        date_close=now_utc() + timedelta(days=40),
        steps=steps,
        transitions=transitions,
        scoring=scoring,
        protocol=protocol,
        tags=tags,
    )
    write_to_file(f"LFP2.challenge.yaml", cd, ChallengeDescription)


def write_to_file(fn: str, ob: object, K: type):
    i = ipce_from_object(ob, K, ieso=IESO(with_schema=False))
    s = yaml.dump(i)
    # s['challenge'] = 'aido5-LFP-sim-validation'
    write_ustring_to_utf8_file(s, fn)


def read_from_file(fn: str, K: type):
    data = read_ustring_from_utf8_file(fn)
    y = yaml.load(data, Loader=yaml.Loader)
    # noinspection PyTypeChecker
    return object_from_ipce(y, K)


if __name__ == "__main__":
    main()
