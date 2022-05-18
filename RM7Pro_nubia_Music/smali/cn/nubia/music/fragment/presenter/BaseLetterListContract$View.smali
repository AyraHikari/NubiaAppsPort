.class public interface abstract Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;
.super Ljava/lang/Object;
.source "BaseLetterListContract.java"

# interfaces
.implements Lcn/nubia/music/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/presenter/BaseLetterListContract;
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
        "Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract showLocalDataSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation
.end method
