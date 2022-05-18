.class public final enum Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;
.super Ljava/lang/Enum;
.source "GeneralParticleSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

.field public static final enum EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

.field public static final enum Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

.field public static final enum Times:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    const-string v1, "EveryFrame"

    invoke-direct {v0, v1, v2}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    const-string v1, "Interval"

    invoke-direct {v0, v1, v3}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    const-string v1, "Times"

    invoke-direct {v0, v1, v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Times:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    sget-object v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Times:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->$VALUES:[Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    return-object v0
.end method

.method public static values()[Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->$VALUES:[Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v0}, [Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    return-object v0
.end method
