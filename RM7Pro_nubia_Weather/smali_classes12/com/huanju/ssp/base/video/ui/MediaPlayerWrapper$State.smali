.class public final enum Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
.super Ljava/lang/Enum;
.source "MediaPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum END:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum ERROR:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum IDLE:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum INITIALIZED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum PAUSED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum PREPARED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum PREPARING:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum STARTED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

.field public static final enum STOPPED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->IDLE:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 46
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 47
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v5}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PREPARING:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 48
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 49
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v7}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STARTED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 50
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 51
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 52
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 53
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "END"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->END:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 54
    new-instance v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ERROR:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->IDLE:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PREPARING:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STARTED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->END:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->ERROR:Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->$VALUES:[Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->$VALUES:[Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/video/ui/MediaPlayerWrapper$State;

    return-object v0
.end method
