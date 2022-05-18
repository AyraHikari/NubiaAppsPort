.class public Lcn/nubia/calendar/RecipientAdapter;
.super Lcn/nubia/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .param p1, "queryMode"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/ex/chips/BaseRecipientAdapter;-><init>(ILandroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setAccount(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 44
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcn/nubia/ex/chips/BaseRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 47
    :cond_0
    return-void
.end method
