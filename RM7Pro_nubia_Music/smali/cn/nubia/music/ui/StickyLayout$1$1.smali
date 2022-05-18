.class Lcn/nubia/music/ui/StickyLayout$1$1;
.super Ljava/lang/Object;
.source "StickyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/ui/StickyLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/ui/StickyLayout$1;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/StickyLayout$1;I)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcn/nubia/music/ui/StickyLayout$1$1;->b:Lcn/nubia/music/ui/StickyLayout$1;

    iput p2, p0, Lcn/nubia/music/ui/StickyLayout$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcn/nubia/music/ui/StickyLayout$1$1;->b:Lcn/nubia/music/ui/StickyLayout$1;

    iget-object v0, v0, Lcn/nubia/music/ui/StickyLayout$1;->f:Lcn/nubia/music/ui/StickyLayout;

    iget v1, p0, Lcn/nubia/music/ui/StickyLayout$1$1;->a:I

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/StickyLayout;->setHeaderHeight(I)V

    .line 265
    return-void
.end method
