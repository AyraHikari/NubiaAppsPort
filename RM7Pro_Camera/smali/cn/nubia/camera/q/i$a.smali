.class Lcn/nubia/camera/q/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:I

.field final synthetic d:Lcn/nubia/camera/q/i;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/q/i;JII)V
    .locals 0

    .line 1744
    iput-object p1, p0, Lcn/nubia/camera/q/i$a;->d:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    iput-wide p2, p0, Lcn/nubia/camera/q/i$a;->a:J

    .line 1746
    iput p4, p0, Lcn/nubia/camera/q/i$a;->b:I

    .line 1747
    iput p5, p0, Lcn/nubia/camera/q/i$a;->c:I

    return-void
.end method
