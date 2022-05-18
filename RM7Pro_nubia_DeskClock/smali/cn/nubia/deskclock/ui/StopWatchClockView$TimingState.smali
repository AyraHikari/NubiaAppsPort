.class final enum Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;
.super Ljava/lang/Enum;
.source "StopWatchClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TimingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

.field public static final enum PAUSING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

.field public static final enum RESETTING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

.field public static final enum TIMING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    const-string v1, "TIMING"

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->TIMING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    const-string v1, "PAUSING"

    invoke-direct {v0, v1, v3}, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->PAUSING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    const-string v1, "RESETTING"

    invoke-direct {v0, v1, v4}, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->RESETTING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    sget-object v1, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->TIMING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->PAUSING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->RESETTING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->$VALUES:[Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    return-object v0
.end method

.method public static values()[Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->$VALUES:[Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    invoke-virtual {v0}, [Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    return-object v0
.end method
