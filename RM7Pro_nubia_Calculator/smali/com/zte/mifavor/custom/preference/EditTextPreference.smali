.class public Lcom/zte/mifavor/custom/preference/EditTextPreference;
.super Ljava/lang/Object;
.source "EditTextPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTextPreference"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAddEditTextToDialogView_getContainer([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 21
    aget-object v0, p0, v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    .line 22
    aget-object v1, p0, v1

    check-cast v1, Landroid/view/View;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "EditTextPreference"

    const-string v3, "onAddEditTextToDialogView_getContainer"

    .line 28
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 30
    aget-object p0, p0, v3

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    if-nez v1, :cond_2

    const p0, 0x1020002

    .line 37
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method
