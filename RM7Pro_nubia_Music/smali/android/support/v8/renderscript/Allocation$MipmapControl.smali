.class public final enum Landroid/support/v8/renderscript/Allocation$MipmapControl;
.super Ljava/lang/Enum;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MipmapControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/Allocation$MipmapControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/v8/renderscript/Allocation$MipmapControl;

.field public static final enum b:Landroid/support/v8/renderscript/Allocation$MipmapControl;

.field public static final enum c:Landroid/support/v8/renderscript/Allocation$MipmapControl;

.field private static final synthetic e:[Landroid/support/v8/renderscript/Allocation$MipmapControl;


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const-string v1, "MIPMAP_NONE"

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v8/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->a:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .line 146
    new-instance v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const-string v1, "MIPMAP_FULL"

    invoke-direct {v0, v1, v3, v3}, Landroid/support/v8/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->b:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .line 153
    new-instance v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const-string v1, "MIPMAP_ON_SYNC_TO_TEXTURE"

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v8/renderscript/Allocation$MipmapControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->c:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v8/renderscript/Allocation$MipmapControl;

    sget-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->a:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->b:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->c:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->e:[Landroid/support/v8/renderscript/Allocation$MipmapControl;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->d:I

    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .locals 1

    .prologue
    .line 134
    const-class v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->e:[Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/Allocation$MipmapControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/Allocation$MipmapControl;

    return-object v0
.end method
