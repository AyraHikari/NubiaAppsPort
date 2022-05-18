.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1299
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .line 1301
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1800(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$1800(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method
