.class public Lcn/nubia/gallery3d/permission/PremissionSetingActivity;
.super Landroid/app/Activity;
.source "PremissionSetingActivity.java"


# instance fields
.field private dialogSetPression:Lcn/nubia/commonui/app/AlertDialog;

.field private mPreviousActivityIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getBuildPression(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 0

    .line 103
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "\u00b7 "

    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0, p4}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method private hasPression(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    .line 113
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showPressionDialog()V
    .locals 7

    .line 49
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 52
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 54
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 55
    aget-object v4, v0, v3

    invoke-direct {p0, v4, p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->hasPression(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SMS"

    .line 56
    aget-object v5, v0, v3

    const v6, 0x7f1001a7

    invoke-direct {p0, v1, v4, v5, v6}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getBuildPression(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "STORAGE"

    .line 58
    aget-object v5, v0, v3

    const v6, 0x7f1001aa

    invoke-direct {p0, v1, v4, v5, v6}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getBuildPression(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "CALLS"

    .line 60
    aget-object v5, v0, v3

    const v6, 0x7f1001ad

    invoke-direct {p0, v1, v4, v5, v6}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getBuildPression(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c006e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f090127

    .line 65
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090128

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f1001a9

    .line 67
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v2, 0x7f1000f3

    .line 71
    new-instance v3, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$2;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$2;-><init>(Lcn/nubia/gallery3d/permission/PremissionSetingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10004e

    new-instance v4, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$1;

    invoke-direct {v4, p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity$1;-><init>(Lcn/nubia/gallery3d/permission/PremissionSetingActivity;)V

    .line 82
    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->dialogSetPression:Lcn/nubia/commonui/app/AlertDialog;

    .line 93
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "previous_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->finish()V

    .line 41
    iget-object v0, p0, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/permission/PremissionSetingActivity;->showPressionDialog()V

    :goto_0
    return-void
.end method
