.class Lcn/nubia/d/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Lcn/nubia/d/f$c;->a:I

    .line 881
    iput p1, p0, Lcn/nubia/d/f$c;->b:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p1, p0, Lcn/nubia/d/f$c;->b:I

    .line 886
    iput p2, p0, Lcn/nubia/d/f$c;->a:I

    return-void
.end method
