.class public final enum Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SliceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

.field public static final enum B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

.field public static final enum I:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

.field public static final enum P:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

.field public static final enum SI:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

.field public static final enum SP:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    const-string v1, "P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->P:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    const-string v3, "B"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    const-string v5, "I"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->I:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    const-string v7, "SP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->SP:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    new-instance v7, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    const-string v9, "SI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->SI:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->$VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    return-object p0
.end method

.method public static values()[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->$VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    invoke-virtual {v0}, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    return-object v0
.end method
