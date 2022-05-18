.class public interface abstract Lcn/nubia/music/online/api/NubiaStreamPlayer$INubiaStreamPlayerCallback;
.super Ljava/lang/Object;
.source "NubiaStreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/api/NubiaStreamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INubiaStreamPlayerCallback"
.end annotation


# static fields
.field public static final SAVE_STATUS_ERROR_FAIL:I = -0x2

.field public static final SAVE_STATUS_ERROR_INSUFFICIENT_STORAGE:I = -0x1

.field public static final SAVE_STATUS_SUCCESS:I


# virtual methods
.method public abstract onBlocked()V
.end method

.method public abstract onBufferingEnd()V
.end method

.method public abstract onBufferingUpdate(I)V
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onError(I)Z
.end method

.method public abstract onGetShowLink(Ljava/lang/String;)V
.end method

.method public abstract onIsShowLink(Z)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onSave(ILjava/lang/String;)V
.end method
