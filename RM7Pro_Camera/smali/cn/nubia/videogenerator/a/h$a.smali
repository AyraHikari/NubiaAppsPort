.class public Lcn/nubia/videogenerator/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    .line 40
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    .line 48
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    .line 49
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    .line 40
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    .line 43
    iput-object p1, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    .line 44
    iput-object p2, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method
