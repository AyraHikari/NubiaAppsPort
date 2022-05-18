.class Lb/a/b/c/b/d$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/c/b/d;-><init>(Lb/a/b/c/b/o;Landroid/net/Uri;Lcn/nubia/video/list/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/c/b/d;


# direct methods
.method constructor <init>(Lb/a/b/c/b/d;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/d$a;->a:Lb/a/b/c/b/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/d$a;->a:Lb/a/b/c/b/d;

    invoke-virtual {v0, p1}, Lb/a/b/c/b/d;->b(Z)V

    return-void
.end method
