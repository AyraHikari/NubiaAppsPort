.class public Lcom/zte/mifavor/custom/preference/PreferenceScreen;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceScreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog_handleDialog([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    .line 25
    aget-object v0, p0, v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    .line 26
    aget-object p0, p0, v1

    check-cast p0, Landroid/app/Dialog;

    .line 28
    invoke-static {v0}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "PreferenceScreen"

    const-string v3, "showDialog_handleDialog"

    .line 32
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 37
    instance-of v4, v3, Landroid/widget/Toolbar;

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    check-cast v3, Landroid/widget/Toolbar;

    .line 40
    new-instance v0, Lcom/zte/mifavor/custom/preference/PreferenceScreen$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/custom/preference/PreferenceScreen$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v2
.end method
