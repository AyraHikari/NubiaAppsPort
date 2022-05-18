.class Lcn/nubia/camera/prisma/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcn/nubia/camera/prisma/b$a;

.field b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcn/nubia/camera/prisma/g;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/prisma/g;Lcn/nubia/camera/prisma/b$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcn/nubia/camera/prisma/g$b;->c:Lcn/nubia/camera/prisma/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcn/nubia/camera/prisma/g$b;->a:Lcn/nubia/camera/prisma/b$a;

    .line 194
    iput-object p3, p0, Lcn/nubia/camera/prisma/g$b;->b:Landroid/graphics/Bitmap;

    return-void
.end method
