.class Lcn/nubia/camera/panorama/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/nio/ByteBuffer;

.field public d:Ljava/nio/ByteBuffer;

.field final synthetic e:Lcn/nubia/camera/panorama/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/panorama/d;II[B[B)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcn/nubia/camera/panorama/d$c;->e:Lcn/nubia/camera/panorama/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p2, p0, Lcn/nubia/camera/panorama/d$c;->a:I

    .line 623
    iput p3, p0, Lcn/nubia/camera/panorama/d$c;->b:I

    .line 624
    invoke-direct {p0, p4}, Lcn/nubia/camera/panorama/d$c;->a([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/d$c;->c:Ljava/nio/ByteBuffer;

    .line 625
    invoke-direct {p0, p5}, Lcn/nubia/camera/panorama/d$c;->a([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/d$c;->d:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a([B)Ljava/nio/ByteBuffer;
    .locals 2

    .line 629
    array-length v0, p1

    invoke-static {v0}, Lcn/nubia/algorithm/utils/PanoramaHelper;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 630
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 631
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 632
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method
