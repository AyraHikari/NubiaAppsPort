.class public Lcn/nubia/camera/am/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x1


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcn/nubia/camera/am/a;

.field private v:Landroid/widget/TextView;

.field private w:Lcn/nubia/camera/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->s:Z

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->t:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/am/b;->v:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    .line 63
    check-cast p1, Lcn/nubia/camera/a/a;

    iput-object p1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/a/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    return-object p0
.end method

.method private a(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const v1, 0x7f0f01a9

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/a/a;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2
.end method

.method static synthetic a(Lcn/nubia/camera/am/b;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/am/b;->s:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/am/b;)Lcn/nubia/camera/am/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 67
    new-instance v0, Lcn/nubia/camera/am/a$a;

    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01ab

    .line 68
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/am/b$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/am/b$2;-><init>(Lcn/nubia/camera/am/b;)V

    const v2, 0x7f0f0036

    .line 69
    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/am/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/am/b$1;-><init>(Lcn/nubia/camera/am/b;)V

    const v2, 0x7f0f01aa

    .line 78
    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->b(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    .line 92
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    const v2, 0x7f0901f0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/am/b;->v:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/am/b;->v:Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f001b

    .line 108
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/am/b;->a(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f02e8

    .line 111
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/am/b;->a(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 114
    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v1, 0x7f0f001c

    .line 115
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/am/b;->a(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcn/nubia/camera/am/b;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private h()V
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HasCurrentPermissionsRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v0, p0, Lcn/nubia/camera/am/b;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/am/b;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 174
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->s:Z

    .line 177
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 179
    iget v0, p0, Lcn/nubia/camera/am/b;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/am/b;->b:I

    .line 180
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->n:Z

    .line 181
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->i:Z

    goto :goto_0

    .line 183
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->n:Z

    .line 184
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->i:Z

    .line 187
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v3}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget v0, p0, Lcn/nubia/camera/am/b;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/am/b;->b:I

    .line 190
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->o:Z

    .line 191
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->j:Z

    goto :goto_1

    .line 193
    :cond_3
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->o:Z

    .line 194
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->j:Z

    .line 197
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    iget v0, p0, Lcn/nubia/camera/am/b;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/am/b;->b:I

    .line 200
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->p:Z

    .line 201
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->l:Z

    goto :goto_2

    .line 203
    :cond_4
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->p:Z

    .line 204
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->l:Z

    .line 207
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget v0, p0, Lcn/nubia/camera/am/b;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/am/b;->b:I

    .line 210
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->q:Z

    .line 211
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->m:Z

    goto :goto_3

    .line 213
    :cond_5
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->q:Z

    .line 214
    iput-boolean v1, p0, Lcn/nubia/camera/am/b;->m:Z

    .line 217
    :goto_3
    iget v0, p0, Lcn/nubia/camera/am/b;->b:I

    if-eqz v0, :cond_6

    .line 218
    invoke-direct {p0}, Lcn/nubia/camera/am/b;->i()V

    :cond_6
    return-void
.end method

.method private i()V
    .locals 4

    .line 225
    iget v0, p0, Lcn/nubia/camera/am/b;->b:I

    new-array v0, v0, [Ljava/lang/String;

    .line 228
    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->i:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "android.permission.CAMERA"

    .line 229
    aput-object v1, v0, v3

    .line 230
    iput v3, p0, Lcn/nubia/camera/am/b;->d:I

    move v3, v2

    .line 233
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 234
    aput-object v1, v0, v3

    .line 235
    iput v3, p0, Lcn/nubia/camera/am/b;->e:I

    add-int/lit8 v3, v3, 0x1

    .line 238
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->l:Z

    if-eqz v1, :cond_2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 239
    aput-object v1, v0, v3

    .line 240
    iput v3, p0, Lcn/nubia/camera/am/b;->g:I

    add-int/lit8 v3, v3, 0x1

    .line 243
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->m:Z

    if-eqz v1, :cond_3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 244
    aput-object v1, v0, v3

    .line 245
    iput v3, p0, Lcn/nubia/camera/am/b;->h:I

    add-int/lit8 v3, v3, 0x1

    .line 248
    :cond_3
    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->k:Z

    if-eqz v1, :cond_4

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 249
    aput-object v1, v0, v3

    .line 250
    iput v3, p0, Lcn/nubia/camera/am/b;->f:I

    .line 253
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    sget v3, Lcn/nubia/camera/am/b;->a:I

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/a/a;->requestPermissions([Ljava/lang/String;I)V

    .line 254
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->t:Z

    const-string v0, "PermissionController"

    const-string v1, "requestPermissions success!"

    .line 255
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I)V
    .locals 2

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reqeustCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; mHasCurrentPermissionsRequest: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/camera/am/b;->t:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PermissionController"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 261
    iput-boolean p1, p0, Lcn/nubia/camera/am/b;->t:Z

    .line 262
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->i:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 263
    iget p1, p0, Lcn/nubia/camera/am/b;->d:I

    array-length v1, p3

    if-ge p1, v1, :cond_0

    aget p1, p3, p1

    if-nez p1, :cond_0

    const-string p1, "Hold Camera Permission"

    .line 265
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->n:Z

    .line 268
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/CameraApplication;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 270
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->r:Z

    .line 273
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->j:Z

    if-eqz p1, :cond_3

    .line 274
    iget p1, p0, Lcn/nubia/camera/am/b;->e:I

    array-length v1, p3

    if-ge p1, v1, :cond_2

    aget p1, p3, p1

    if-nez p1, :cond_2

    const-string p1, "Hold Microphone Permission"

    .line 276
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->o:Z

    goto :goto_1

    .line 279
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->r:Z

    .line 282
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->l:Z

    if-eqz p1, :cond_5

    .line 283
    iget p1, p0, Lcn/nubia/camera/am/b;->g:I

    array-length v1, p3

    if-ge p1, v1, :cond_4

    aget p1, p3, p1

    if-nez p1, :cond_4

    const-string p1, "Hold Storage Permission"

    .line 285
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->p:Z

    goto :goto_2

    .line 288
    :cond_4
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->r:Z

    .line 291
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->m:Z

    if-eqz p1, :cond_7

    .line 292
    iget p1, p0, Lcn/nubia/camera/am/b;->h:I

    array-length v1, p3

    if-ge p1, v1, :cond_6

    aget p1, p3, p1

    if-nez p1, :cond_6

    const-string p1, "Hold Write Storage Permission"

    .line 294
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->q:Z

    goto :goto_3

    .line 297
    :cond_6
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->r:Z

    .line 301
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->k:Z

    if-eqz p1, :cond_8

    .line 302
    iget p1, p0, Lcn/nubia/camera/am/b;->f:I

    array-length v1, p3

    if-ge p1, v1, :cond_8

    aget p1, p3, p1

    if-nez p1, :cond_8

    const-string p1, "Hold Location Permission"

    .line 304
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_8
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->n:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->o:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->p:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->q:Z

    if-eqz p1, :cond_9

    .line 314
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->c:Z

    goto :goto_4

    .line 315
    :cond_9
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->r:Z

    if-eqz p1, :cond_a

    const-string p1, "Critical permission denied"

    .line 316
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-boolean p1, p0, Lcn/nubia/camera/am/b;->s:Z

    if-nez p1, :cond_a

    .line 318
    invoke-virtual {p0}, Lcn/nubia/camera/am/b;->e()V

    :cond_a
    :goto_4
    return-void
.end method

.method public a()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 124
    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 125
    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 126
    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->c:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->c:Z

    return v0
.end method

.method public b()Z
    .locals 6

    const-string v0, "PermissionController"

    const-string v1, "checkPermissionsAndRequest"

    .line 136
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 138
    invoke-virtual {v1, v4}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 139
    invoke-virtual {v1, v4}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 140
    invoke-virtual {v1, v4}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iput-boolean v2, p0, Lcn/nubia/camera/am/b;->c:Z

    .line 142
    iget-boolean v0, p0, Lcn/nubia/camera/am/b;->s:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    .line 144
    iput-boolean v3, p0, Lcn/nubia/camera/am/b;->s:Z

    :cond_0
    return v2

    .line 148
    :cond_1
    iput-boolean v3, p0, Lcn/nubia/camera/am/b;->c:Z

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v4}, Lcn/nubia/camera/a/a;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/nubia/camera/am/b;->c:Z

    if-nez v1, :cond_3

    .line 152
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/am/b;->w:Lcn/nubia/camera/a/a;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "request_permission"

    .line 153
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 154
    iget-boolean v5, p0, Lcn/nubia/camera/am/b;->c:Z

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const-string v5, "Request permission"

    .line 155
    invoke-static {v0, v5}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput v3, p0, Lcn/nubia/camera/am/b;->b:I

    .line 157
    invoke-direct {p0}, Lcn/nubia/camera/am/b;->h()V

    .line 158
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v3
.end method

.method public c()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcn/nubia/camera/am/b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcn/nubia/camera/am/b;->s:Z

    return v0
.end method

.method public e()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcn/nubia/camera/am/b;->f()V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/am/b;->g()V

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/am/b;->u:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcn/nubia/camera/am/b;->s:Z

    return-void
.end method
