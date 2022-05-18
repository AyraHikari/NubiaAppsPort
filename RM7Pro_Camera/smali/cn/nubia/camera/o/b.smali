.class public Lcn/nubia/camera/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    .line 16
    new-instance v0, Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    invoke-direct {v0}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    invoke-virtual {v0, p1}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;->asyncPutYuvData([B)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;->cancel()I

    return-void
.end method

.method public a(IIIIIZII)V
    .locals 10

    move-object v0, p0

    .line 19
    iget-object v1, v0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;->init(IIIIIZII)I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    invoke-virtual {v0, p1}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;->stop(Landroid/graphics/Bitmap;)I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;[I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;->getPreivewBitmap(Landroid/graphics/Bitmap;[I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/o/b;->a:Lcn/nubia/algorithm/camera/EletronicAlgorithm;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/EletronicAlgorithm;->quit()I

    return-void
.end method
