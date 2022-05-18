.class public interface abstract Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;
.super Ljava/lang/Object;
.source "BaseMoreListContract.java"

# interfaces
.implements Lcn/nubia/music/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/presenter/BaseMoreListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/music/base/BaseView",
        "<",
        "Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract showDataSuccess(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;I)V"
        }
    .end annotation
.end method
