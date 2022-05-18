.class Lcn/nubia/music/activity/SelectMusicFolderActivity$b;
.super Landroid/widget/BaseAdapter;
.source "SelectMusicFolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/SelectMusicFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;
    }
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/SelectMusicFolderActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 179
    iput-object p1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a:Z

    .line 180
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->d:Landroid/view/LayoutInflater;

    .line 181
    return-void
.end method

.method static synthetic a(Lcn/nubia/music/activity/SelectMusicFolderActivity$b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 189
    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1

    iget-wide v4, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$400(Lcn/nubia/music/activity/SelectMusicFolderActivity;J)V

    .line 195
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 217
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 223
    if-nez p2, :cond_2

    .line 224
    new-instance v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;-><init>(Lcn/nubia/music/activity/SelectMusicFolderActivity$b;Lcn/nubia/music/activity/SelectMusicFolderActivity$1;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 226
    const v0, 0x7f100091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->a:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f100093

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->c:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f100096

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->d:Landroid/widget/CheckBox;

    .line 229
    const v0, 0x7f100095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->e:Landroid/widget/LinearLayout;

    .line 230
    const v0, 0x7f100092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->f:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f100094

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->b:Landroid/widget/TextView;

    .line 232
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 236
    :goto_0
    const-string v5, ""

    .line 237
    const-string v3, ""

    .line 238
    const-string v1, ""

    .line 239
    const/4 v0, 0x0

    .line 240
    const/4 v4, 0x0

    .line 241
    iget-object v6, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 242
    iget-object v0, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    .line 244
    iget-object v1, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderName:Ljava/lang/String;

    .line 245
    const-string v3, "tencent/MobileQQ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tencent/Qqmail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "netease/cloudmusic"

    .line 246
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    :cond_0
    const/4 v3, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 250
    :goto_1
    iget v5, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderSongCount:I

    .line 251
    const-wide/16 v6, 0x1

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    iget-wide v8, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    .line 252
    const/4 v4, 0x1

    .line 253
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    .line 254
    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    iget-object v1, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->b:Lcn/nubia/music/activity/SelectMusicFolderActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/SelectMusicFolderActivity;->access$300(Lcn/nubia/music/activity/SelectMusicFolderActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v1, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;

    iget-object v1, v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v1, v4

    .line 259
    iget-object v4, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    .line 260
    iget-object v0, v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderDescription:Ljava/lang/String;

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v10, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v10

    .line 266
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getview,name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",desc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "checked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",songCnt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 268
    iget-object v6, v2, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, v2, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v3, v2, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 271
    iget-object v1, v2, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->d:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b;->a:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 272
    const v1, 0x7f0b00e5

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v3, v2, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, v2, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-object p2

    .line 234
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/SelectMusicFolderActivity$b$a;

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    move v10, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v10

    goto/16 :goto_2

    :cond_4
    move-object v3, v1

    goto/16 :goto_1

    :cond_5
    move v10, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2
.end method
