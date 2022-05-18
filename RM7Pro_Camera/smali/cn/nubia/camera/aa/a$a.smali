.class Lcn/nubia/camera/aa/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:[B

.field b:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcn/nubia/camera/aa/a$a;->a:[B

    .line 284
    iput-wide p2, p0, Lcn/nubia/camera/aa/a$a;->b:J

    return-void
.end method
