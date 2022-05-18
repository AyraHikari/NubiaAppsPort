.class public Lcn/nubia/videogenerator/codec/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/g;


# instance fields
.field protected a:Lcn/nubia/videogenerator/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/f;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/c;->a:Lcn/nubia/videogenerator/a/f;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/d;)V
    .locals 0

    .line 26
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/d;->a(Lcn/nubia/videogenerator/a/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 33
    iget-object p3, p0, Lcn/nubia/videogenerator/codec/c;->a:Lcn/nubia/videogenerator/a/f;

    if-eqz p3, :cond_0

    .line 34
    invoke-interface {p3, p1, p2}, Lcn/nubia/videogenerator/a/f;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/c;->a:Lcn/nubia/videogenerator/a/f;

    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/a/f;->a(I)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/c;->a:Lcn/nubia/videogenerator/a/f;

    invoke-interface {v0}, Lcn/nubia/videogenerator/a/f;->f()V

    return-void
.end method
