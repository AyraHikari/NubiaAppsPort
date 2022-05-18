.class Lcn/nubia/d/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lcn/nubia/d/f$b;->a:I

    .line 896
    iput-boolean p2, p0, Lcn/nubia/d/f$b;->b:Z

    return-void
.end method
