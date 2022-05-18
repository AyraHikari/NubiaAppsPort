.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi21"
.end annotation


# instance fields
.field protected final mControlsObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2183
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    .line 2184
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    .line 2185
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->fastForward(Ljava/lang/Object;)V

    .line 2239
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->pause(Ljava/lang/Object;)V

    .line 2224
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->play(Ljava/lang/Object;)V

    .line 2219
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2294
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2300
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2304
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2308
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2309
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2310
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2311
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2312
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 2189
    const-string v0, "android.support.v4.media.session.action.PREPARE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2190
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2195
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2197
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2198
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2203
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2205
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2206
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2211
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2212
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2213
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2214
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->rewind(Ljava/lang/Object;)V

    .line 2244
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->seekTo(Ljava/lang/Object;J)V

    .line 2234
    return-void
.end method

.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2321
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->access$200(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2322
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    .line 2323
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2322
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2324
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2328
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->access$200(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2329
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2331
    return-void
.end method

.method public setCaptioningEnabled(Z)V
    .locals 2

    .prologue
    .line 2264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2265
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2266
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2267
    return-void
.end method

.method public setRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    .prologue
    .line 2258
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2259
    invoke-virtual {p1}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v0

    .line 2258
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->setRating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2260
    return-void

    .line 2259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 2

    .prologue
    .line 2271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2272
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2273
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2274
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    .prologue
    .line 2285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2286
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2287
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2288
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .prologue
    .line 2278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2279
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2280
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2281
    return-void
.end method

.method public skipToNext()V
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToNext(Ljava/lang/Object;)V

    .line 2249
    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToPrevious(Ljava/lang/Object;)V

    .line 2254
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToQueueItem(Ljava/lang/Object;J)V

    .line 2317
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->stop(Ljava/lang/Object;)V

    .line 2229
    return-void
.end method
