.class public Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/PrismaSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:Landroid/graphics/drawable/LayerDrawable;

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->b:I

    .line 344
    iput v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->b:I

    .line 344
    iput v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->e:I

    .line 350
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    .line 351
    iput p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->b:I

    .line 352
    iput p3, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->e:I

    .line 353
    iput-object p4, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->g:Ljava/lang/String;

    return-void
.end method
