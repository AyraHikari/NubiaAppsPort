.class Lcn/nubia/camera/prisma/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcn/nubia/algorithm/camera/c;

.field final synthetic c:Lcn/nubia/camera/prisma/g;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/prisma/g;Ljava/lang/String;Lcn/nubia/algorithm/camera/c;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcn/nubia/camera/prisma/g$a;->c:Lcn/nubia/camera/prisma/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcn/nubia/camera/prisma/g$a;->a:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcn/nubia/camera/prisma/g$a;->b:Lcn/nubia/algorithm/camera/c;

    return-void
.end method
