.class Lcn/nubia/camera/w/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:F

.field final synthetic d:Lcn/nubia/camera/w/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/w/a;JIF)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcn/nubia/camera/w/a$d;->d:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-wide p2, p0, Lcn/nubia/camera/w/a$d;->a:J

    .line 831
    iput p4, p0, Lcn/nubia/camera/w/a$d;->b:I

    .line 832
    iput p5, p0, Lcn/nubia/camera/w/a$d;->c:F

    return-void
.end method
