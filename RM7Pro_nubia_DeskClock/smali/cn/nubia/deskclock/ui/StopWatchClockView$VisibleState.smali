.class final enum Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;
.super Ljava/lang/Enum;
.source "StopWatchClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/StopWatchClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VisibleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

.field public static final enum INVISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

.field public static final enum VISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->VISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v3}, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->INVISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    sget-object v1, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->VISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->INVISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->$VALUES:[Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    return-object v0
.end method

.method public static values()[Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->$VALUES:[Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    invoke-virtual {v0}, [Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    return-object v0
.end method
