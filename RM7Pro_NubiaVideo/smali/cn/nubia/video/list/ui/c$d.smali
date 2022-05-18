.class Lcn/nubia/video/list/ui/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/c;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/c$d;->a:Lcn/nubia/video/list/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/c$d;->a:Lcn/nubia/video/list/ui/c;

    iget-object v0, v0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lb/a/b/c/b/f;->N(I)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
