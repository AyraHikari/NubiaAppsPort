.class public final enum Lcn/nubia/notepad/enums/MediaPlayerState;
.super Ljava/lang/Enum;
.source "MediaPlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/enums/MediaPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/enums/MediaPlayerState;

.field public static final enum PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

.field public static final enum PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

.field public static final enum STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/enums/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    new-instance v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/enums/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    new-instance v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/enums/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->$VALUES:[Lcn/nubia/notepad/enums/MediaPlayerState;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/enums/MediaPlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/enums/MediaPlayerState;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/enums/MediaPlayerState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->$VALUES:[Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-virtual {v0}, [Lcn/nubia/notepad/enums/MediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/enums/MediaPlayerState;

    return-object v0
.end method
