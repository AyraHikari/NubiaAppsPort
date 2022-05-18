.class public Lcn/nubia/video/permission/PremissionSetingActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/video/commonui/app/b;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    sget p2, Lb/a/b/a/g;->e:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 3
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

.method private c()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 6
    aget-object v4, v0, v3

    invoke-direct {p0, v4, p0}, Lcn/nubia/video/permission/PremissionSetingActivity;->b(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SMS"

    .line 7
    aget-object v5, v0, v3

    sget v6, Lb/a/b/a/g;->b:I

    invoke-direct {p0, v1, v4, v5, v6}, Lcn/nubia/video/permission/PremissionSetingActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    const-string v4, "STORAGE"

    .line 8
    aget-object v5, v0, v3

    sget v6, Lb/a/b/a/g;->d:I

    invoke-direct {p0, v1, v4, v5, v6}, Lcn/nubia/video/permission/PremissionSetingActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    const-string v4, "CALLS"

    .line 9
    aget-object v5, v0, v3

    sget v6, Lb/a/b/a/g;->c:I

    invoke-direct {p0, v1, v4, v5, v6}, Lcn/nubia/video/permission/PremissionSetingActivity;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lb/a/b/a/f;->m:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 11
    sget v3, Lb/a/b/a/e;->z:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 12
    sget v4, Lb/a/b/a/e;->A:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 13
    sget v5, Lb/a/b/a/g;->g:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v1, Lcn/nubia/video/commonui/app/b$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v1, v2}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    .line 17
    sget v2, Lb/a/b/a/g;->f:I

    new-instance v3, Lcn/nubia/video/permission/PremissionSetingActivity$b;

    invoke-direct {v3, p0}, Lcn/nubia/video/permission/PremissionSetingActivity$b;-><init>(Lcn/nubia/video/permission/PremissionSetingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    sget v2, Lb/a/b/a/g;->a:I

    new-instance v3, Lcn/nubia/video/permission/PremissionSetingActivity$a;

    invoke-direct {v3, p0}, Lcn/nubia/video/permission/PremissionSetingActivity$a;-><init>(Lcn/nubia/video/permission/PremissionSetingActivity;)V

    .line 18
    invoke-virtual {v1, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 19
    invoke-virtual {v1, v0}, Lcn/nubia/video/commonui/app/b$a;->d(Landroid/view/View;)Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {v1}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/permission/PremissionSetingActivity;->a:Lcn/nubia/video/commonui/app/b;

    .line 20
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "previous_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcn/nubia/video/permission/PremissionSetingActivity;->b:Landroid/content/Intent;

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-static {p0}, Lcn/nubia/video/permission/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/permission/PremissionSetingActivity;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/permission/PremissionSetingActivity;->c()V

    :goto_0
    return-void
.end method
