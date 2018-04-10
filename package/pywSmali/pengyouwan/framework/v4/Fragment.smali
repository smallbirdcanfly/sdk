.class public Lcom/pengyouwan/framework/v4/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/Fragment$a;,
        Lcom/pengyouwan/framework/v4/Fragment$SavedState;
    }
.end annotation


# static fields
.field private static final a:Lcom/pengyouwan/framework/v4/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/al",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field A:I

.field B:Ljava/lang/String;

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:I

.field K:Landroid/view/ViewGroup;

.field L:Landroid/view/View;

.field M:Landroid/view/View;

.field N:Z

.field O:Z

.field P:Lcom/pengyouwan/framework/v4/aa;

.field Q:Z

.field R:Z

.field d:I

.field e:Landroid/view/View;

.field f:I

.field g:Landroid/os/Bundle;

.field h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field j:Ljava/lang/String;

.field k:Landroid/os/Bundle;

.field l:Lcom/pengyouwan/framework/v4/Fragment;

.field m:I

.field n:I

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:I

.field v:Lcom/pengyouwan/framework/v4/u;

.field w:Lcom/pengyouwan/framework/v4/FragmentActivity;

.field x:Lcom/pengyouwan/framework/v4/u;

.field y:Lcom/pengyouwan/framework/v4/Fragment;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/pengyouwan/framework/v4/al;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/al;-><init>()V

    .line 145
    sput-object v0, Lcom/pengyouwan/framework/v4/Fragment;->a:Lcom/pengyouwan/framework/v4/al;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    .line 171
    iput v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    .line 183
    iput v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->m:I

    .line 254
    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    .line 276
    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->O:Z

    .line 351
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 377
    :try_start_0
    sget-object v3, Lcom/pengyouwan/framework/v4/Fragment;->a:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v3, p1}, Lcom/pengyouwan/framework/v4/al;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 378
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 381
    sget-object v3, Lcom/pengyouwan/framework/v4/Fragment;->a:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v3, p1, v0}, Lcom/pengyouwan/framework/v4/al;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 384
    .local v2, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz p2, :cond_1

    .line 385
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 386
    iput-object p2, v2, Lcom/pengyouwan/framework/v4/Fragment;->k:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 388
    :cond_1
    return-object v2

    .line 389
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/pengyouwan/framework/v4/Fragment$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to instantiate fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 392
    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-direct {v3, v4, v1}, Lcom/pengyouwan/framework/v4/Fragment$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 393
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/pengyouwan/framework/v4/Fragment$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to instantiate fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-direct {v3, v4, v1}, Lcom/pengyouwan/framework/v4/Fragment$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 397
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/pengyouwan/framework/v4/Fragment$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to instantiate fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 399
    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 400
    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-direct {v3, v4, v1}, Lcom/pengyouwan/framework/v4/Fragment$a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 414
    :try_start_0
    sget-object v2, Lcom/pengyouwan/framework/v4/Fragment;->a:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v2, p1}, Lcom/pengyouwan/framework/v4/al;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 415
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 418
    sget-object v2, Lcom/pengyouwan/framework/v4/Fragment;->a:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v2, p1, v0}, Lcom/pengyouwan/framework/v4/al;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    const-class v2, Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 422
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 999
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1153
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1156
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    if-nez v0, :cond_0

    .line 1157
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    .line 1158
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;ZZ)Lcom/pengyouwan/framework/v4/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->h()V

    .line 1163
    :cond_1
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 888
    return-void
.end method

.method final a(ILcom/pengyouwan/framework/v4/Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 440
    iput p1, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    .line 441
    if-eqz p2, :cond_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 951
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 943
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-nez v0, :cond_0

    .line 857
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Lcom/pengyouwan/framework/v4/Fragment;Landroid/content/Intent;I)V

    .line 860
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Lcom/pengyouwan/framework/v4/Fragment;Landroid/content/Intent;I)V

    .line 871
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1536
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1537
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/res/Configuration;)V

    .line 1540
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 976
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1233
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1216
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1013
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1354
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1355
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1358
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1360
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1361
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1363
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1364
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1365
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1366
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1367
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1369
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1370
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1371
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1372
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1373
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1374
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1375
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v0, :cond_1

    .line 1380
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->y:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v0, :cond_2

    .line 1384
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->y:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->k:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1390
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1391
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1394
    :cond_4
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1395
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1398
    :cond_5
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v0, :cond_6

    .line 1399
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1400
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1403
    :cond_6
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    if-eqz v0, :cond_7

    .line 1404
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1406
    :cond_7
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1407
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->K:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1409
    :cond_8
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1410
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1412
    :cond_9
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1413
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1415
    :cond_a
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1416
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1417
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1420
    :cond_b
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_c

    .line 1421
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/aa;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1424
    :cond_c
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_d

    .line 1425
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1428
    :cond_d
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 745
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 1481
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 432
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->f(Landroid/os/Bundle;)V

    .line 433
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 434
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1275
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1559
    const/4 v0, 0x0

    .line 1560
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-nez v1, :cond_1

    .line 1561
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v1, :cond_0

    .line 1562
    const/4 v0, 0x1

    .line 1563
    invoke-virtual {p0, p1, p2}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1565
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v1, :cond_1

    .line 1566
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1, p1, p2}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1569
    :cond_1
    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->k:Landroid/os/Bundle;

    return-object v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->e()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 510
    iget v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-ltz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/Fragment;->k:Landroid/os/Bundle;

    .line 514
    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1573
    const/4 v0, 0x0

    .line 1574
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-nez v1, :cond_1

    .line 1575
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v1, :cond_0

    .line 1576
    const/4 v0, 0x1

    .line 1577
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/view/Menu;)V

    .line 1579
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v1, :cond_1

    .line 1580
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1583
    :cond_1
    return v0
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1587
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-nez v1, :cond_2

    .line 1588
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v1, :cond_1

    .line 1589
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return v0

    .line 1593
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v1, :cond_2

    .line 1594
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1599
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/pengyouwan/framework/v4/FragmentActivity;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    return-object v0
.end method

.method d(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-nez v0, :cond_1

    .line 1618
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v0, :cond_0

    .line 1619
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/view/Menu;)V

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/u;->b(Landroid/view/Menu;)V

    .line 1625
    :cond_1
    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1603
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-nez v1, :cond_2

    .line 1604
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return v0

    .line 1607
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v1, :cond_2

    .line 1608
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/u;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1613
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1040
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 456
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1055
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    return v0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1063
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1065
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    if-nez v0, :cond_1

    .line 1066
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    .line 1067
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    if-nez v0, :cond_0

    .line 1068
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    .line 1069
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;ZZ)Lcom/pengyouwan/framework/v4/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->b()V

    .line 1075
    :cond_1
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1107
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1085
    return-void
.end method

.method h(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1454
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v1, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 1457
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1458
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/os/Bundle;)V

    .line 1459
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v1, :cond_1

    .line 1460
    new-instance v1, Lcom/pengyouwan/framework/v4/an;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1461
    const-string v3, " did not call through to super.onCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1460
    invoke-direct {v1, v2}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1463
    :cond_1
    if-eqz p1, :cond_3

    .line 1465
    const-string v1, "android:support:fragments"

    .line 1464
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1466
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    .line 1467
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-nez v1, :cond_2

    .line 1468
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->o()V

    .line 1470
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1471
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/u;->j()V

    .line 1474
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1120
    return-void
.end method

.method i(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 1488
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1489
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->e(Landroid/os/Bundle;)V

    .line 1490
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1491
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1492
    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1491
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->k()V

    .line 1497
    :cond_2
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1129
    return-void
.end method

.method j(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1628
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->g(Landroid/os/Bundle;)V

    .line 1629
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v1, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/u;->h()Landroid/os/Parcelable;

    move-result-object v0

    .line 1631
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1632
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1635
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1146
    return-void
.end method

.method l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1172
    const/4 v0, -0x1

    iput v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    .line 1173
    iput-object v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    .line 1174
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    .line 1175
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->p:Z

    .line 1176
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->q:Z

    .line 1177
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    .line 1178
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    .line 1179
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->t:Z

    .line 1180
    iput v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    .line 1181
    iput-object v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    .line 1182
    iput-object v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 1183
    iput v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    .line 1184
    iput v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    .line 1185
    iput-object v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    .line 1186
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    .line 1187
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    .line 1188
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    .line 1189
    iput-object v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    .line 1190
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    .line 1191
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    .line 1192
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1200
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 1243
    return-void
.end method

.method o()V
    .locals 3

    .prologue
    .line 1441
    new-instance v0, Lcom/pengyouwan/framework/v4/u;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/u;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    .line 1442
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    new-instance v2, Lcom/pengyouwan/framework/v4/Fragment$1;

    invoke-direct {v2, p0}, Lcom/pengyouwan/framework/v4/Fragment$1;-><init>(Lcom/pengyouwan/framework/v4/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/FragmentActivity;Lcom/pengyouwan/framework/v4/s;Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1451
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1111
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1296
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1133
    return-void
.end method

.method p()V
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 1502
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 1504
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1505
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->g()V

    .line 1506
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1507
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1508
    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_2

    .line 1511
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->l()V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_3

    .line 1514
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->g()V

    .line 1516
    :cond_3
    return-void
.end method

.method q()V
    .locals 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 1521
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 1523
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1524
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->h()V

    .line 1525
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1526
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1527
    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1526
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->m()V

    .line 1531
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 1533
    :cond_2
    return-void
.end method

.method r()V
    .locals 1

    .prologue
    .line 1543
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->onLowMemory()V

    .line 1544
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->s()V

    .line 1547
    :cond_0
    return-void
.end method

.method s()V
    .locals 3

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->n()V

    .line 1641
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1642
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->i()V

    .line 1643
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1644
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1645
    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_1
    return-void
.end method

.method t()V
    .locals 3

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->o()V

    .line 1653
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1654
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->j()V

    .line 1655
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1656
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1657
    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1656
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 469
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 470
    iget v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-ltz v1, :cond_0

    .line 471
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    :cond_0
    iget v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    if-eqz v1, :cond_1

    .line 475
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 479
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method u()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1662
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->p()V

    .line 1665
    :cond_0
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    if-eqz v0, :cond_2

    .line 1666
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    .line 1667
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    if-nez v0, :cond_1

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->R:Z

    .line 1669
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/Fragment;->Q:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;ZZ)Lcom/pengyouwan/framework/v4/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_2

    .line 1672
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->h:Z

    if-nez v0, :cond_3

    .line 1673
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->c()V

    .line 1679
    :cond_2
    :goto_0
    return-void

    .line 1675
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->d()V

    goto :goto_0
.end method

.method v()V
    .locals 3

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->q()V

    .line 1685
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1686
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->k()V

    .line 1687
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1688
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1689
    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_2

    .line 1692
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->f()V

    .line 1694
    :cond_2
    return-void
.end method

.method w()V
    .locals 3

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->r()V

    .line 1700
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1701
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/Fragment;->a()V

    .line 1702
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_1

    .line 1703
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1704
    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1706
    :cond_1
    return-void
.end method
