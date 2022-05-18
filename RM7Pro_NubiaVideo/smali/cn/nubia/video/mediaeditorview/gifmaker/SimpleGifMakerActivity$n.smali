.class public final enum Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum e:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum f:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum g:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum h:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum i:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field public static final enum j:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

.field private static final synthetic k:[Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v1, "GIF_NOT_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v3, "GIF_TOO_SHORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v3, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v5, "DECODE_BEGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->c:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v5, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v7, "DECODE_FINISH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->d:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v7, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v9, "DECODE_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->e:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v9, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v11, "CROP_BEGIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->f:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v11, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v13, "CROP_FINISH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->g:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v13, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v15, "CROP_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->h:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v15, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v14, "LOAD_BEGIN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->i:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    new-instance v14, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const-string v12, "LOAD_FINISH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->j:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    const/16 v12, 0xa

    new-array v12, v12, [Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 2
    sput-object v12, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->k:[Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

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

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    return-object p0
.end method

.method public static values()[Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->k:[Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-virtual {v0}, [Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    return-object v0
.end method
