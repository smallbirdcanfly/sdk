package com.pengyouwan.framework.v4;
import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;

import java.io.FileDescriptor;
import java.io.PrintWriter;

/**
 * Implementation of activity compatibility that can call Honeycomb APIs.
 */
@TargetApi(Build.VERSION_CODES.HONEYCOMB)
class ActivityCompatHoneycomb {
    static void invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
    }

	static void dump(Activity activity, String prefix, FileDescriptor fd,
            PrintWriter writer, String[] args) {
        activity.dump(prefix, fd, writer, args);
    }
}
