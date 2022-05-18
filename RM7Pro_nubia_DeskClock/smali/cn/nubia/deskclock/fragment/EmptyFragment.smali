.class public Lcn/nubia/deskclock/fragment/EmptyFragment;
.super Lcn/nubia/deskclock/fragment/BaseFragment;
.source "EmptyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public doBackPressed()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public getMotionContentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
