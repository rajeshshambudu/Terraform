Terraform 
#
az login

az account set --subscription "<SUBSCRIPTION_ID>"


terraform init

terraform plan

terraform apply


##############

variables.tf → declares inputs

terraform.tfvars → real values

main.tf → infrastructure logic

backend.tf → remote state

outputs.tf → shows results

References (azurerm_resource_group.rg.name) create dependencies automatically



#####################


Haha 😄 got it — **ALL means literally everything, end-to-end, nothing left out**.
This will be the **final missing pieces** so you can **run, connect, understand, clean up, and explain it confidently**.

You already have the **full code**. Now here’s **what people usually still get stuck on** 👇

---

## 9️⃣ Azure prerequisites (must be done ONCE)

### Login to Azure

```bash
az login
```

### Set correct subscription (if you have multiple)

```bash
az account set --subscription "<SUBSCRIPTION_ID>"
```

---

## 🔟 Backend prerequisites (IMPORTANT)

Before `terraform init`, create these **manually once**:

* Resource Group: `RajeshGroup`
* Storage Account: `rajeshterraformsa`

  * lowercase only
  * globally unique
* Blob Container: `tfstate`

Terraform **cannot create its own backend**.

---

## 1️⃣1️⃣ Terraform lifecycle commands (EXAM + REAL LIFE)

### Initialize

```bash
terraform init
```

✔ Downloads provider
✔ Configures backend
✔ Locks state storage

---

### Validate (syntax check)

```bash
terraform validate
```

---

### Plan (dry run)

```bash
terraform plan
```

Shows:

* What will be created
* What will change
* What will be destroyed

---

### Apply (create resources)

```bash
terraform apply
```

Type:

```text
yes
```

---

## 1️⃣2️⃣ How to connect to the VM (after apply)

Terraform output shows:

```text
vm_public_ip = x.x.x.x
```

### SSH into VM

```bash
ssh azureuser@<PUBLIC_IP>
```

Password:

```
Password@123
```

✅ You are now inside the Azure VM.

---

## 1️⃣3️⃣ VERY IMPORTANT: How to destroy everything safely

When you’re done (or for exams / labs):

```bash
terraform destroy
```

Type:

```text
yes
```

✔ Deletes VM
✔ Deletes NIC, IP
✔ Deletes VNet & Subnet
✔ Keeps backend storage (recommended)

---

## 1️⃣4️⃣ Line-by-line explanation (interview gold)

### Why variables?

```hcl
var.resource_group_name
```

✔ Reusable
✔ No hard-coding
✔ Environment friendly

---

### Why references instead of strings?

```hcl
resource_group_name = azurerm_resource_group.rg.name
```

✔ Terraform creates dependency graph
✔ Correct order guaranteed
✔ No typos

---

### Why backend?

```hcl
backend "azurerm"
```

✔ Team collaboration
✔ State locking
✔ Prevents accidental deletes

---

### Why NIC is separate from VM?

Azure architecture:

```
VM → NIC → Subnet → VNet → RG
```

Terraform mirrors Azure design.

---

## 1️⃣5️⃣ Common mistakes (avoid these)

❌ Using `India` instead of `Central India`
❌ Hardcoding RG name everywhere
❌ Storing state locally for teams
❌ Plaintext passwords in production
❌ Running `apply` without `plan`

---

## 1️⃣6️⃣ Production improvements (next level)

When you’re ready:

* 🔐 SSH keys instead of passwords
* 🔐 Azure Key Vault
* 📦 Terraform modules
* 🚀 CI/CD (GitHub Actions)
* 🌍 Multiple environments (dev / qa / prod)

---

## ✅ FINAL SUMMARY

You now have:

* ✅ Complete Terraform Azure project
* ✅ Networking + VM
* ✅ Remote backend
* ✅ Variables & outputs
* ✅ Run, connect, destroy flow
* ✅ Interview-ready explanations

This is **exactly** what a real cloud engineer does.

If you want **one last thing**:

* Convert this into **modules**
* Or **exam-style Q&A**
* Or **real production hardening**

Just say it 😎
