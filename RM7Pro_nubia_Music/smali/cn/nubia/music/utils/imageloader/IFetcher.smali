.class public interface abstract Lcn/nubia/music/utils/imageloader/IFetcher;
.super Ljava/lang/Object;
.source "IFetcher.java"


# virtual methods
.method public abstract clearDiskCache(Landroid/content/Context;)V
.end method

.method public abstract displayChannelNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
.end method

.method public abstract displayGif(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
.end method

.method public abstract displayImage(Landroid/content/Context;Landroid/widget/ImageView;ILcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
.end method

.method public abstract displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
.end method

.method public abstract displayRemoteNotification(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V
.end method

.method public abstract downloadOnly(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method public abstract pause(Landroid/content/Context;)V
.end method

.method public abstract resume(Landroid/content/Context;)V
.end method
