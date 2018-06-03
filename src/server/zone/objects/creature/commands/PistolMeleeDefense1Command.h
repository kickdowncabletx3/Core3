/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef PISTOLMELEEDEFENSE1COMMAND_H_
#define PISTOLMELEEDEFENSE1COMMAND_H_

#include "CombatQueueCommand.h"

class PistolMeleeDefense1Command : public CombatQueueCommand {
public:

	PistolMeleeDefense1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return doCombatAction(creature, target);
	}

};

#endif //PISTOLMELEEDEFENSE1COMMAND_H_
