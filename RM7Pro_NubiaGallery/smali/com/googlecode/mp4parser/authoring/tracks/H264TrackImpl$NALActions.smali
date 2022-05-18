.class final enum Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
.super Ljava/lang/Enum;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NALActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 223
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v3, "BUFFER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v5, "STORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 222
    sput-object v7, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->$VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .locals 1

    .line 222
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    return-object p0
.end method

.method public static values()[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .locals 1

    .line 222
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->$VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    invoke-virtual {v0}, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    return-object v0
.end method
