.class public final enum Landroid/support/v8/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum b:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum c:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum d:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum e:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum f:Landroid/support/v8/renderscript/Type$CubemapFace;

.field private static final synthetic h:[Landroid/support/v8/renderscript/Type$CubemapFace;


# instance fields
.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_X"

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->a:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 66
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_X"

    invoke-direct {v0, v1, v5, v5}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->b:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 67
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_Y"

    invoke-direct {v0, v1, v6, v6}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->c:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 68
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Y"

    invoke-direct {v0, v1, v7, v7}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->d:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 69
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_Z"

    invoke-direct {v0, v1, v8, v8}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->e:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 70
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Z"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->f:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/v8/renderscript/Type$CubemapFace;

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->a:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->b:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->c:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->d:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v7

    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->e:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/support/v8/renderscript/Type$CubemapFace;->f:Landroid/support/v8/renderscript/Type$CubemapFace;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->h:[Landroid/support/v8/renderscript/Type$CubemapFace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Landroid/support/v8/renderscript/Type$CubemapFace;->g:I

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Type$CubemapFace;
    .locals 1

    .prologue
    .line 64
    const-class v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/Type$CubemapFace;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->h:[Landroid/support/v8/renderscript/Type$CubemapFace;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/Type$CubemapFace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/Type$CubemapFace;

    return-object v0
.end method
