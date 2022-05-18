.class Lcn/nubia/camera/videomaker/k$b;
.super Lcn/nubia/camera/videomaker/service/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/k;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/service/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/videomaker/k;Lcn/nubia/camera/videomaker/k$1;)V
    .locals 0

    .line 1128
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k$b;-><init>(Lcn/nubia/camera/videomaker/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1244
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->f(Lcn/nubia/camera/videomaker/k;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v1}, Lcn/nubia/camera/videomaker/k;->f(Lcn/nubia/camera/videomaker/k;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x107

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "onVideoEditorCreated"

    .line 1132
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1135
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f009c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1139
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->n(Lcn/nubia/camera/videomaker/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onVideoEditorExportCanceled"

    .line 1249
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingExportFilename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    .line 1251
    invoke-static {v1}, Lcn/nubia/camera/videomaker/k;->i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;Z)Z

    .line 1253
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoEditorExportProgress, progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1202
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;Z)Z

    .line 1204
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->f(Lcn/nubia/camera/videomaker/k;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->f(Lcn/nubia/camera/videomaker/k;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x106

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    .line 1205
    invoke-static {v2}, Lcn/nubia/camera/videomaker/k;->s(Lcn/nubia/camera/videomaker/k;)I

    move-result v2

    add-int/2addr p2, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1204
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Exception;Z)V
    .locals 2

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoEditorExportComplete, cancelled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ", exception = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1215
    :cond_0
    iget-object p4, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;Z)Z

    .line 1216
    iget-object p4, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p4}, Lcn/nubia/camera/videomaker/k;->i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "return 3"

    .line 1217
    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    return-void

    .line 1221
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, p2}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1225
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/k;->m()V

    .line 1227
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;Ljava/lang/String;)Ljava/lang/String;

    .line 1228
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/k;->d()V

    if-eqz p3, :cond_2

    .line 1231
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f009e

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1232
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string p1, "onAudioTrackAdded"

    .line 1170
    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioTrackAdded exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoMakerPage"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object p2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p2}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f009f

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1174
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p2}, Lcn/nubia/camera/videomaker/k;->o(Lcn/nubia/camera/videomaker/k;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1178
    iget-object p2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p2}, Lcn/nubia/camera/videomaker/k;->o(Lcn/nubia/camera/videomaker/k;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1179
    iget-object p2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p2}, Lcn/nubia/camera/videomaker/k;->p(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    iget-object p2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p2, p1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;Z)Z

    .line 1181
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->r(Lcn/nubia/camera/videomaker/k;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p2}, Lcn/nubia/camera/videomaker/k;->q(Lcn/nubia/camera/videomaker/k;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "onVideoEditorDeleted"

    .line 1162
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1164
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$b;->a:Lcn/nubia/camera/videomaker/k;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f009d

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
