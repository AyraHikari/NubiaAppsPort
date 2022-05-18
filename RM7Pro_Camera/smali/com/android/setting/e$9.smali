.class Lcom/android/setting/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 345
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->j(Lcom/android/setting/e;)Lcom/android/setting/e$a;

    move-result-object p1

    const-string p4, "MoreSettingsFragment"

    if-nez p1, :cond_0

    const-string p1, "mExpandListView is closed"

    .line 346
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mExpandListView onItemClick "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p5, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p5}, Lcom/android/setting/e;->e(Lcom/android/setting/e;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->k(Lcom/android/setting/e;)Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    iget-object p5, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p5}, Lcom/android/setting/e;->e(Lcom/android/setting/e;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is disable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result p2

    if-ne p3, p2, :cond_2

    .line 356
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->i(Lcom/android/setting/e;)V

    return-void

    .line 359
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/preference/ListPreference;->a(I)V

    .line 361
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    iget-object p2, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p2}, Lcom/android/setting/e;->e(Lcom/android/setting/e;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/setting/e$b;->b(Ljava/lang/String;)V

    .line 365
    :cond_3
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->j(Lcom/android/setting/e;)Lcom/android/setting/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/setting/e$a;->notifyDataSetChanged()V

    .line 366
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->d(Lcom/android/setting/e;)Lcom/android/setting/d;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 367
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->d(Lcom/android/setting/e;)Lcom/android/setting/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/setting/d;->notifyDataSetChanged()V

    .line 369
    :cond_4
    iget-object p1, p0, Lcom/android/setting/e$9;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->i(Lcom/android/setting/e;)V

    return-void
.end method
