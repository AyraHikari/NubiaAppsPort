.class public final enum Landroid/support/v8/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum b:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum c:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum d:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum e:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum f:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum g:Landroid/support/v8/renderscript/Element$DataKind;

.field public static final enum h:Landroid/support/v8/renderscript/Element$DataKind;

.field private static final synthetic j:[Landroid/support/v8/renderscript/Element$DataKind;


# instance fields
.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 175
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->a:Landroid/support/v8/renderscript/Element$DataKind;

    .line 177
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_L"

    invoke-direct {v0, v1, v6, v5}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->b:Landroid/support/v8/renderscript/Element$DataKind;

    .line 178
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->c:Landroid/support/v8/renderscript/Element$DataKind;

    .line 179
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_LA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->d:Landroid/support/v8/renderscript/Element$DataKind;

    .line 180
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_RGB"

    const/4 v2, 0x4

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->e:Landroid/support/v8/renderscript/Element$DataKind;

    .line 181
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_RGBA"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    .line 182
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_DEPTH"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->g:Landroid/support/v8/renderscript/Element$DataKind;

    .line 183
    new-instance v0, Landroid/support/v8/renderscript/Element$DataKind;

    const-string v1, "PIXEL_YUV"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, Landroid/support/v8/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->h:Landroid/support/v8/renderscript/Element$DataKind;

    .line 174
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->a:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->b:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v1, v0, v6

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->c:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v1, v0, v7

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->d:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->e:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->g:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v2, v0, v1

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->h:Landroid/support/v8/renderscript/Element$DataKind;

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v8/renderscript/Element$DataKind;->j:[Landroid/support/v8/renderscript/Element$DataKind;

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
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Landroid/support/v8/renderscript/Element$DataKind;->i:I

    .line 188
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Element$DataKind;
    .locals 1

    .prologue
    .line 174
    const-class v0, Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Element$DataKind;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/Element$DataKind;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Landroid/support/v8/renderscript/Element$DataKind;->j:[Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/Element$DataKind;

    return-object v0
.end method
