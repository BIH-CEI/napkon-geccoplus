### Guidance

The echocardiography findings of GECCOplus are encoded using the [Echocardiography Findings][Cardio Echo Findings] profile from the NAPKON cardiology module.

The following response options are included in GECCOplus:

| Echocardiography finding | `Condition.code` |
| -------------------------- | -------------------- |
| Aortic valve regurgitation | `Aortic valve regurgitation (disorder)` |
| Aortic valve stenosis | `Aortic valve stenosis (disorder)` |
| Mitral valve regurgitation | `Mitral valve regurgitation (disorder)` |
| Mitral valve stenosis | `Mitral valve stenosis (disorder)` |
{:.grid}

The concrete response options are encoded as follows using codes from [SNOMED CT][SNOMEDCT]:


#### Aortic valve regurgitation (AI)

| Response Option | Code | Description | `uncertaintyOfPresence` | `Condition.verificationStatus` |
| --------------- | ---- | ----------- | --------------------- | --------------------- |
| Keine AI  | `#60234000` | `Aortic valve regurgitation (disorder)` | - | `#refuted` |
| Leichtgradige AI | `#838544003` | `Mild aortic valve regurgitation (disorder)` | - | `#confirmed` |
| Mittelgradige AI | `#838545002` | `Moderate aortic valve regurgitation (disorder)` | - | `#confirmed` |
| Hochgradige AI | `#838546001` | `Severe aortic valve regurgitation (disorder)` | - | `#confirmed` |
| Unbekannt (nicht bestimmbar) | `#60234000` | `Aortic valve regurgitation (disorder)` | set | - |
| Nicht erhoben | `#60234000` | `Aortic valve regurgitation (disorder)` | set | - |
{:.grid}

#### Aortic valve stenosis (AS)

| Response Option | Code | Description | `uncertaintyOfPresence` | `Condition.verificationStatus` |
| --------------- | ---- | ----------- | --------------------- | --------------------- |
| Keine AS | `#60573004` | `Aortic valve stenosis (disorder)` | - | `#refuted` |
| Leichtgradige AS | `#836480008` | `Mild stenosis of aortic valve (disorder)` | - | `#confirmed` |
| Mittelgradige AS | `#836481007` | `Moderate stenosis of aortic valve (disorder)` | - | `#confirmed` |
| Hochgradige AS | `#836482000` | `Severe stenosis of aortic valve (disorder)` | - | `#confirmed` |
| Unbekannt (nicht bestimmbar) | `#60573004` | `Aortic valve stenosis (disorder)` | set | - |
| Nicht erhoben | `#60573004` | `Aortic valve stenosis (disorder)` | set | - |
{:.grid}

#### Mitral valve regurgitation (MI)

| Response Option | Code | Description | `uncertaintyOfPresence` | `Condition.verificationStatus` |
| --------------- | ---- | ----------- | --------------------- | --------------------- |
| Keine MI  | `#48724000` | `Mitral valve regurgitation (disorder)` | - | `#refuted` |
| Leichtgradige MI | `#838451005` | `Mild mitral valve regurgitation (disorder)` | - | `#confirmed` |
| Mittelgradige MI | `#838452003` | `Moderate mitral valve regurgitation (disorder)` | - | `#confirmed` |
| Hochgradige MI | `#838453008` | `Severe mitral valve regurgitation (disorder)` | - | `#confirmed` |
| Unbekannt (nicht bestimmbar) | `#48724000` | `Mitral valve regurgitation (disorder)` | set | - |
| Nicht erhoben | `#48724000` | `Mitral valve regurgitation (disorder)` | set | - |
{:.grid}

#### Mitral valve stenosis (MS)

| Response Option | Code | Description | `uncertaintyOfPresence` | `Condition.verificationStatus` |
| --------------- | ---- | ----------- | --------------------- | --------------------- |
| Keine MS | `#79619009` | `Mitral valve stenosis (disorder)` | - | `#refuted` |
| Leichtgradige MS | `#838448003` | `Mild mitral valve stenosis (disorder)` | - | `#confirmed` |
| Mittelgradige MS | `#838449006` | `Moderate mitral valve stenosis (disorder)` | - | `#confirmed` |
| Hochgradige MS | `#838450006` | `Severe mitral valve stenosis (disorder)` | - | `#confirmed` |
| Unbekannt (nicht bestimmbar) | `#79619009` | `Mitral valve stenosis (disorder)` | set | - |
| Nicht erhoben | `#79619009` | `Mitral valve stenosis (disorder)` | set | - |
{:.grid}

{% include link-list.md %}
