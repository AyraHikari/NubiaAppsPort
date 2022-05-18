.class public Lcn/nubia/deskclock/model/WorldTimeModel;
.super Ljava/lang/Object;
.source "WorldTimeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mDeleteCountState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getsetDeleteStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/deskclock/model/WorldTimeModel;->mDeleteCountState:Ljava/lang/String;

    return-object v0
.end method

.method public setDeleteStateString(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcn/nubia/deskclock/model/WorldTimeModel;->mDeleteCountState:Ljava/lang/String;

    .line 15
    return-void
.end method
