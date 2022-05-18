.class public Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlarmNameSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmNameSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameSettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public hasChecked:[Z

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "this$0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 253
    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->mData:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "i":I
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 257
    .local v1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    const-string v2, "checked"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v4, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 259
    goto :goto_0

    .line 260
    .end local v1    # "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->setName(I)V

    return-void
.end method

.method private checkedTrue(I)V
    .locals 3
    .param p1, "checkedID"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 359
    if-ne v0, p1, :cond_0

    .line 360
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 358
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 366
    :cond_1
    return-void
.end method

.method private setAllTypePick()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 341
    const/4 v1, 0x1

    .line 342
    .local v1, "isCustom":Z
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$600(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "mCurrentLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 344
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$700(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)[I

    move-result-object v3

    aput v5, v3, v0

    .line 347
    const/4 v1, 0x0

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$700(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)[I

    move-result-object v3

    const/4 v4, 0x0

    aput v4, v3, v0

    goto :goto_1

    .line 352
    :cond_1
    if-ne v1, v5, :cond_2

    .line 353
    iget-object v3, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$700(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)[I

    move-result-object v3

    const/4 v4, 0x3

    aput v5, v3, v4

    .line 355
    :cond_2
    return-void
.end method

.method private setName(I)V
    .locals 4
    .param p1, "checkedID"    # I

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->checkedTrue(I)V

    .line 316
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->setAllTypePick()V

    .line 317
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->notifyDataSetChanged()V

    .line 318
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 319
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$300(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$300(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$400(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$400(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->cancel()V

    .line 324
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0, v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$402(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    .line 326
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$500(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$302(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    .line 327
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$300(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 338
    :cond_2
    :goto_0
    return-void

    .line 329
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->getCheckedName()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setAlarmName(Ljava/lang/String;Z)V

    .line 330
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$300(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 331
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$300(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 333
    :cond_4
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$400(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$400(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->cancel()V

    .line 335
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0, v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$402(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public getCheckedName()I
    .locals 2

    .prologue
    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 370
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 374
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 369
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 269
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f0f0020

    .line 274
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    .local v1, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    .line 276
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 277
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 278
    .local v3, "vh":Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;
    move v0, p1

    .line 280
    .local v0, "checkedID":I
    if-nez p2, :cond_1

    .line 281
    new-instance v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;

    .end local v3    # "vh":Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;
    invoke-direct {v3, p0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;)V

    .line 282
    .restart local v3    # "vh":Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;
    const v4, 0x7f04007f

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 283
    const v4, 0x7f120156

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f120157

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    .line 285
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    :goto_0
    iget-object v5, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "entry"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 292
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 293
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    new-instance v5, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$1;

    invoke-direct {v5, p0, v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$1;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_0
    new-instance v4, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;

    invoke-direct {v4, p0, v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->hasChecked:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_2

    .line 307
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    :goto_1
    return-object p2

    .line 287
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "vh":Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;
    check-cast v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;

    .restart local v3    # "vh":Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;
    goto :goto_0

    .line 309
    :cond_2
    iget-object v4, v3, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method
