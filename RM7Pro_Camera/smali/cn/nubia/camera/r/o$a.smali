.class Lcn/nubia/camera/r/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:[F

.field b:J


# direct methods
.method public constructor <init>([FJ)V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/o$a;->a:[F

    .line 217
    iput-wide p2, p0, Lcn/nubia/camera/r/o$a;->b:J

    return-void
.end method
