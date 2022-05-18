.class public final enum Lcn/nubia/music/app/download/PathManager$PathTag;
.super Ljava/lang/Enum;
.source "PathManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/download/PathManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/app/download/PathManager$PathTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/app/download/PathManager$PathTag;

.field public static final enum ALBUM_THUMBS:Lcn/nubia/music/app/download/PathManager$PathTag;

.field public static final enum IMAGE:Lcn/nubia/music/app/download/PathManager$PathTag;

.field public static final enum LYRIC:Lcn/nubia/music/app/download/PathManager$PathTag;

.field public static final enum RINGS:Lcn/nubia/music/app/download/PathManager$PathTag;

.field public static final enum SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

.field public static final enum START:Lcn/nubia/music/app/download/PathManager$PathTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/app/download/PathManager$PathTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->START:Lcn/nubia/music/app/download/PathManager$PathTag;

    new-instance v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v1, "SONGS"

    invoke-direct {v0, v1, v4}, Lcn/nubia/music/app/download/PathManager$PathTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    new-instance v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v1, "RINGS"

    invoke-direct {v0, v1, v5}, Lcn/nubia/music/app/download/PathManager$PathTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->RINGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    new-instance v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v6}, Lcn/nubia/music/app/download/PathManager$PathTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->IMAGE:Lcn/nubia/music/app/download/PathManager$PathTag;

    new-instance v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v1, "LYRIC"

    invoke-direct {v0, v1, v7}, Lcn/nubia/music/app/download/PathManager$PathTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->LYRIC:Lcn/nubia/music/app/download/PathManager$PathTag;

    new-instance v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    const-string v1, "ALBUM_THUMBS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/app/download/PathManager$PathTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->ALBUM_THUMBS:Lcn/nubia/music/app/download/PathManager$PathTag;

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/nubia/music/app/download/PathManager$PathTag;

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->START:Lcn/nubia/music/app/download/PathManager$PathTag;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->RINGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->IMAGE:Lcn/nubia/music/app/download/PathManager$PathTag;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->LYRIC:Lcn/nubia/music/app/download/PathManager$PathTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/music/app/download/PathManager$PathTag;->ALBUM_THUMBS:Lcn/nubia/music/app/download/PathManager$PathTag;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->$VALUES:[Lcn/nubia/music/app/download/PathManager$PathTag;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/app/download/PathManager$PathTag;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/download/PathManager$PathTag;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/app/download/PathManager$PathTag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcn/nubia/music/app/download/PathManager$PathTag;->$VALUES:[Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-virtual {v0}, [Lcn/nubia/music/app/download/PathManager$PathTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/app/download/PathManager$PathTag;

    return-object v0
.end method
