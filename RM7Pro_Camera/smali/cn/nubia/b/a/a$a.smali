.class public Lcn/nubia/b/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a/a;

.field private final b:I

.field private final c:I

.field private final d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcn/nubia/b/a/a;Landroid/media/Image$Plane;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/b/a/a$a;->a:Lcn/nubia/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    iput p1, p0, Lcn/nubia/b/a/a$a;->b:I

    .line 54
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    iput p1, p0, Lcn/nubia/b/a/a$a;->c:I

    .line 55
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/a/a$a;->d:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 63
    iget v0, p0, Lcn/nubia/b/a/a$a;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 71
    iget v0, p0, Lcn/nubia/b/a/a$a;->b:I

    return v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/b/a/a$a;->d:Ljava/nio/ByteBuffer;

    return-object v0
.end method
