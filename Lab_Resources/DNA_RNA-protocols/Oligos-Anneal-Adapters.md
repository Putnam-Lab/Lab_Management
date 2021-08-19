# Re-suspending Oligos and Annealing Adapters


## Re-suspending dried oligos (primers or adapters) from a company (Ie IDT or Eurofins)
When ordering primers or adapters, they often come dried. They need to be reconstituted or re-suspended in liquid before you can use them. Oligo means single stranded short piece of DNA, like a PCR primer, or one strand of an adapter.

Oligos are best re-suspended in TE buffer or "low" TE buffer. For stock re-suspended solutions of oligos, the concentration should be 200uM or 100uM. You have to add the correct amount of liquid to the dried DNA to achieve that concentration. Each tube from the company comes with a different amount of DNA. You may request 100nmol of oligo to be synthesized when you purchase it, but it is never the exact amount you request. Look on the tube label or on the paper/packing slip that came with the oligos for the nmol (amount of DNA) that is in each tube. Working concentrations of adapters or primers are much smaller than 100uM/200uM, usually around 10uM. You make a stock solution at a higher concentration and aliquots at working concentration to avoid too many freeze thaws that can damage the DNA.

**Steps**
- For each oligo calculate the amount of TE or Low TE buffer needed to make your desired stock concentration:  

**µL buffer = (nanomoles DNA) / (desired conc. in µM) * 1000**
- _For a shortcut calculation, just multiply the nMoles number by 5 to get the volume in µL of buffer to add to yield a 200µM stock solution. For a 500µM stock solution multiply by 2_
- Wipe the molecular bench down with bleach and wear clean gloves
- Spin the dried oligo tubes down in the mini-centrifuge for 1 minute
- Add the calculated amount of buffer to each tube with **filter tips**
- Vortex the tubes for at least 15 seconds, look in the tubes and see if you can see any pellet pieces still present, if so vortex for another 15-30 seconds
- Spin down the tubes to collect the liquid
- Label the lid with the stock concentration  
- Write on the side of the tube the date
- Place re-suspended oligos on ice

**Low TE Recipe for 500mL**
- Add 494.9 ml of nuclease-free water to autoclavable bottle
- Add 5 ml of 1M Tris HCL pH 8
- Add 100 µl of 0.5M EDTA
- Autoclave bottle for at least 20 mins at 121ºC
  - Foil the lid of the bottle
  - Put autoclave tape on the bottle
  - Gently place lid on the bottle (do not screw on tight!)
  - Autoclave with liquid 20min program
- Label the bottle with Low TE and the date made, keep the autoclave tape on
- Pour low TE into 50mL conical for use

**Diluting Stock Solutions to Working Solutions**

- Determine the concentration of the working solution needed
- Determine the volume of liquid you want to make the working solution in
- Calculate how much stock solution is needed by using the equation M1V1=M2V2, or using an online calculator like [this one](https://www.sigmaaldrich.com/US/en/support/calculators-and-apps/solution-dilution-calculator)
  - For Example: want 10uM concentration in 100ul using a 200uM stock
  - 200uM * x = 10uM * 100ul
  - (10*100)/200 = x
  - x = 5ul = amount of 200uM stock solution to use
- Calculate how much nuclease free water or TE buffer to use to make the dilution
  - Using the example from above that is:
  - 100ul (total vol) - 5ul (oligo vol) = 95ul volume water
- Add the water/buffer first to new 1.5mL tubes
- Add the oligo volume second (if you need to thaw the stock oligos, vortex and spin them down first before using the liquid)
- Vortex and spin down tubes
- Label tubes with the name, concentration, and date
- If using immediately, keep on ice. If using another day, put in the -20 freezer

## Annealing Adapters

Adapters come as dried oligos from companies like primers do. However primers stay single stranded, but adapters need to have their top and bottom strands annealed together before use. Those strands come in different tubes and usually have the same name with "top" or "bottom" with them.

Adapters need to be annealed before being diluted to a working solution. You take from the **stock** solution to make an **annealed stock** solution, which is then diluted to a **working annealed stock** solution.

We usually make the **annealed stock** with a concentration of 40uM. **Working annealed stock** concentrations are usually much smaller that they are for primers, in the nM range. The **working annealed stock** concentration is dependent on your protocol and the amount of DNA input going into that protocol. Consult the protocol for what concentration is needed for your reactions. The **working annealed stock** is diluted as in the above section, however instead of being diluted in nuclease free water or TE buffer, they are diluted with 1X annealing buffer. Make sure you use the correct volume and concentration amounts.

**Steps for Annealing a 40uM stock**

- These calculations are for a stock solution concentration of 100uM for the top and bottom adapters
- Vortex and spin down the stock adapters if the needed to be thawed for use. Thaw on ice
- For 100ul annealed stock:
  - 40ul 100uM stock top adapter
  - 40ul 100uM stock bottom adapter
  - 10ul 10X annealing buffer (see recipe below)
  - 10ul nuclease free water
- For 50ul annealed stock, half all of those volumes
- Vortex and spin down the annealed stock tubes
- Place in the thermocycler in the "anneal adapters" program in the JONP login
  - The program is: 97.5°C for 2.5 minutes, and then cool at a rate of not greater than 3°C per minute until the solution reaches a temperature of 21°C. Hold at 4°C
- Afterwards either store on ice to make the **working annealed stock** dilution, or freeze at -20
- **Working annealed stocks** should also be stored at -20 when not in use and thawed on ice

**10X Annealing Buffer Recipe (50mL conical)**
- 5 ml of 1M Tris HCL pH 8
- 5 ml of 5M NaCl
- 1 ml of 0.5M EDTA
- Fill conical with 39 ml of nuclease free water

**1X Annealing Buffer is 5mL of 10X Annealing Buffer and 45mL of nuclease free water to make a 50mL conical**
