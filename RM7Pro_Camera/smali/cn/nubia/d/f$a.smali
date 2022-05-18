.class Lcn/nubia/d/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/d/h;

.field b:Z


# direct methods
.method constructor <init>(Lcn/nubia/d/h;Z)V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p1, p0, Lcn/nubia/d/f$a;->a:Lcn/nubia/d/h;

    .line 906
    iput-boolean p2, p0, Lcn/nubia/d/f$a;->b:Z

    return-void
.end method
