.class Lcom/hpplay/sdk/source/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    .line 153
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    return-object v0
.end method

.method public onCompletion()V
    .locals 5

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 209
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    return-void

    .line 214
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onError(II)V
    .locals 5

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 284
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    return-void

    .line 291
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onInfo(II)V
    .locals 5

    .prologue
    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 252
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 256
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    return-void

    .line 259
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onInfo2(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 268
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 272
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    return-void

    .line 275
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onLoading()V
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 167
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 169
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    return-void

    .line 172
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 195
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    return-void

    .line 200
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onPositionUpdate(JJ)V
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 315
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 319
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    return-void

    .line 322
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onSeekComplete(I)V
    .locals 5

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 237
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 240
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    return-void

    .line 243
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 181
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 183
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    return-void

    .line 186
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 223
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 225
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    return-void

    .line 228
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onVolumeChanged(F)V
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 300
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget-object v0, p0, Lcom/hpplay/sdk/source/h$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    return-void

    .line 306
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
