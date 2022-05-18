.class public final enum Lcom/huanju/ssp/base/video/PlayerMessageState;
.super Ljava/lang/Enum;
.source "PlayerMessageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/video/PlayerMessageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum CLEARING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum CREATING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum DATA_SOURCE_SET:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum END:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum IDLE:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum INITIALIZED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PAUSED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PAUSING:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PLAYER_INSTANCE_CLEARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PLAYER_INSTANCE_CREATED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PREPARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum PREPARING:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum RELEASED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum RELEASING:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum RESET:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum RESETTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum SETTING_DATA_SOURCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum SETTING_NEW_PLAYER:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum STARTED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum STARTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum STOPPED:Lcom/huanju/ssp/base/video/PlayerMessageState;

.field public static final enum STOPPING:Lcom/huanju/ssp/base/video/PlayerMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "SETTING_NEW_PLAYER"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 5
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->IDLE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 6
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->INITIALIZED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 7
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v6}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PREPARING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 8
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v7}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PREPARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 9
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "STARTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 10
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "STARTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 11
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PAUSING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PAUSING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 12
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PAUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PAUSED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 13
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "STOPPING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->STOPPING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 14
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "STOPPED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->STOPPED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 15
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "RELEASING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->RELEASING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 16
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "RELEASED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->RELEASED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 17
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "RESETTING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->RESETTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 18
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "RESET"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->RESET:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 19
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "CLEARING_PLAYER_INSTANCE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 20
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PLAYER_INSTANCE_CLEARED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 21
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "CREATING_PLAYER_INSTANCE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 22
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PLAYER_INSTANCE_CREATED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 23
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "SETTING_DATA_SOURCE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 24
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "DATA_SOURCE_SET"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->DATA_SOURCE_SET:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 25
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "PLAYBACK_COMPLETED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 26
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "END"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->END:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 27
    new-instance v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    const-string v1, "ERROR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/PlayerMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

    .line 3
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/huanju/ssp/base/video/PlayerMessageState;

    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->SETTING_NEW_PLAYER:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->IDLE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->INITIALIZED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->PREPARING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huanju/ssp/base/video/PlayerMessageState;->PREPARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->STARTED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->PAUSING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->PAUSED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->STOPPING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->STOPPED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->RELEASING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->RELEASED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->RESETTING:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->RESET:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->SETTING_DATA_SOURCE:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->DATA_SOURCE_SET:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->END:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/huanju/ssp/base/video/PlayerMessageState;->ERROR:Lcom/huanju/ssp/base/video/PlayerMessageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->$VALUES:[Lcom/huanju/ssp/base/video/PlayerMessageState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/video/PlayerMessageState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/huanju/ssp/base/video/PlayerMessageState;->$VALUES:[Lcom/huanju/ssp/base/video/PlayerMessageState;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/video/PlayerMessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/video/PlayerMessageState;

    return-object v0
.end method
