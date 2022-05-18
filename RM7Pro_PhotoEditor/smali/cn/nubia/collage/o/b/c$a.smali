.class Lcn/nubia/collage/o/b/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/o/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/o/b/c$a;->a:I

    iput p1, p0, Lcn/nubia/collage/o/b/c$a;->a:I

    return-void
.end method
