.class public Lcn/nubia/permission/PermissionSetingActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Ljava/lang/Boolean;

.field private c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->b:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcn/nubia/permission/PermissionSetingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/permission/PermissionSetingActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0003

    invoke-direct {p2, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p2, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    iget-object p2, p0, Lcn/nubia/permission/PermissionSetingActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_5

    const v1, 0x7f0b008f

    invoke-virtual {p2, v1}, Landroid/view/Window;->setContentView(I)V

    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    const v1, 0x7f0801c5

    invoke-virtual {p2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080078

    invoke-virtual {p2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801eb

    invoke-virtual {p2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    new-instance v1, Lcn/nubia/permission/PermissionSetingActivity$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/permission/PermissionSetingActivity$a;-><init>(Lcn/nubia/permission/PermissionSetingActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p2, :cond_5

    new-instance p1, Lcn/nubia/permission/PermissionSetingActivity$b;

    invoke-direct {p1, p0}, Lcn/nubia/permission/PermissionSetingActivity$b;-><init>(Lcn/nubia/permission/PermissionSetingActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/nubia/permission/PermissionSetingActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcn/nubia/permission/b;->b:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    invoke-static {p0, v6}, Lcn/nubia/permission/b;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v7, :cond_1

    if-nez v8, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcn/nubia/permission/b;->b()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/nubia/permission/b;->a:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    invoke-static {p0, v6}, Lcn/nubia/permission/b;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v7, :cond_4

    if-nez v8, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcn/nubia/permission/b;->b()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0, p1, v1}, Lcn/nubia/permission/PermissionSetingActivity;->c(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_8
    const p1, 0x7f0e011f

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "previous_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcn/nubia/permission/PermissionSetingActivity;->a:Landroid/content/Intent;

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_collage_called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lyf permissionSettingActivity onResume isCollageCalled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/permission/PermissionSetingActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->b:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcn/nubia/permission/b;->d(Landroid/content/Context;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lyf permissionSettingActivity onResume 111"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcn/nubia/permission/PermissionSetingActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "lyf permissionSettingActivity onResume 222"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcn/nubia/permission/PermissionSetingActivity;->d(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
