.class Lcn/nubia/video/player/FragmentBase$1;
.super Ljava/lang/Object;
.source "FragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/FragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/FragmentBase;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/FragmentBase;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/video/player/FragmentBase$1;->this$0:Lcn/nubia/video/player/FragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase$1;->this$0:Lcn/nubia/video/player/FragmentBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/video/player/FragmentBase;->access$002(Lcn/nubia/video/player/FragmentBase;I)I

    return-void
.end method
