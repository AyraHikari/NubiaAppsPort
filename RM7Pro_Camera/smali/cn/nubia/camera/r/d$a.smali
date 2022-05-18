.class public Lcn/nubia/camera/r/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/algorithm/utils/a;

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/utils/a;III)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcn/nubia/camera/r/d$a;->a:Lcn/nubia/algorithm/utils/a;

    .line 379
    iput p2, p0, Lcn/nubia/camera/r/d$a;->b:I

    .line 380
    iput p3, p0, Lcn/nubia/camera/r/d$a;->c:I

    .line 381
    iput p4, p0, Lcn/nubia/camera/r/d$a;->d:I

    return-void
.end method
